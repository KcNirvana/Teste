.class Lss/ss/ss/d$c$3;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d$c;->a(Lss/ss/ss/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lss/ss/ss/n;

.field final synthetic c:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/n;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$c$3;->c:Lss/ss/ss/d$c;

    iput-object p4, p0, Lss/ss/ss/d$c$3;->b:Lss/ss/ss/n;

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/d$c$3;->c:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v0, v0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget-object v1, p0, Lss/ss/ss/d$c$3;->b:Lss/ss/ss/n;

    invoke-interface {v0, v1}, Lss/ss/ss/c;->a(Lss/ss/ss/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
