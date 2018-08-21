.class Lss/ss/ss/d$c$1;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d$c;->a(ZZIILjava/util/List;Lss/ss/ss/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lss/ss/ss/e;

.field final synthetic c:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/e;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$c$1;->c:Lss/ss/ss/d$c;

    iput-object p4, p0, Lss/ss/ss/d$c$1;->b:Lss/ss/ss/e;

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/d$c$1;->c:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->f(Lss/ss/ss/d;)Lss/ss/ss/d$b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/d$c$1;->b:Lss/ss/ss/e;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$b;->a(Lss/ss/ss/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lss/ss/c;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lss/ss/ss/d$c$1;->c:Lss/ss/ss/d$c;

    iget-object v4, v4, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v4}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d$c$1;->b:Lss/ss/ss/e;

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    invoke-virtual {v0, v1}, Lss/ss/ss/e;->a(Lss/ss/ss/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
