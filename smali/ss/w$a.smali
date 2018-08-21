.class public Lss/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lss/q;

.field private b:Ljava/lang/String;

.field private c:Lss/p$a;

.field private d:Lss/x;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lss/w$a;->b:Ljava/lang/String;

    new-instance v0, Lss/p$a;

    invoke-direct {v0}, Lss/p$a;-><init>()V

    iput-object v0, p0, Lss/w$a;->c:Lss/p$a;

    return-void
.end method

.method private constructor <init>(Lss/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/w;->a(Lss/w;)Lss/q;

    move-result-object v0

    iput-object v0, p0, Lss/w$a;->a:Lss/q;

    invoke-static {p1}, Lss/w;->b(Lss/w;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/w$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lss/w;->c(Lss/w;)Lss/x;

    move-result-object v0

    iput-object v0, p0, Lss/w$a;->d:Lss/x;

    invoke-static {p1}, Lss/w;->d(Lss/w;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lss/w$a;->e:Ljava/lang/Object;

    invoke-static {p1}, Lss/w;->e(Lss/w;)Lss/p;

    move-result-object v0

    invoke-virtual {v0}, Lss/p;->b()Lss/p$a;

    move-result-object v0

    iput-object v0, p0, Lss/w$a;->c:Lss/p$a;

    return-void
.end method

.method synthetic constructor <init>(Lss/w;Lss/w$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/w$a;-><init>(Lss/w;)V

    return-void
.end method

.method static synthetic a(Lss/w$a;)Lss/q;
    .locals 1

    iget-object v0, p0, Lss/w$a;->a:Lss/q;

    return-object v0
.end method

.method static synthetic b(Lss/w$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/w$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/w$a;)Lss/p$a;
    .locals 1

    iget-object v0, p0, Lss/w$a;->c:Lss/p$a;

    return-object v0
.end method

.method static synthetic d(Lss/w$a;)Lss/x;
    .locals 1

    iget-object v0, p0, Lss/w$a;->d:Lss/x;

    return-object v0
.end method

.method static synthetic e(Lss/w$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lss/w$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lss/w$a;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lss/q;->e(Ljava/lang/String;)Lss/q;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lss/w$a;->a(Lss/q;)Lss/w$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;
    .locals 1

    iget-object v0, p0, Lss/w$a;->c:Lss/p$a;

    invoke-virtual {v0, p1, p2}, Lss/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lss/p$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lss/x;)Lss/w$a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lss/ss/gK/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lss/ss/gK/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lss/w$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lss/w$a;->d:Lss/x;

    return-object p0
.end method

.method public a(Lss/q;)Lss/w$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lss/w$a;->a:Lss/q;

    return-object p0
.end method

.method public a(Lss/x;)Lss/w$a;
    .locals 1

    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lss/w$a;->a(Ljava/lang/String;Lss/x;)Lss/w$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/w;
    .locals 2

    iget-object v0, p0, Lss/w$a;->a:Lss/q;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lss/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/w;-><init>(Lss/w$a;Lss/w$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lss/w$a;
    .locals 1

    iget-object v0, p0, Lss/w$a;->c:Lss/p$a;

    invoke-virtual {v0, p1}, Lss/p$a;->b(Ljava/lang/String;)Lss/p$a;

    return-object p0
.end method
