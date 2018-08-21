.class Lss/ss/ss/d$c$2;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d$c;->a(ZLss/ss/ss/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lss/ss/ss/d$c;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$c$2;->b:Lss/ss/ss/d$c;

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lss/ss/ss/d$c$2;->b:Lss/ss/ss/d$c;

    iget-object v0, v0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->f(Lss/ss/ss/d;)Lss/ss/ss/d$b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/d$c$2;->b:Lss/ss/ss/d$c;

    iget-object v1, v1, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, v1}, Lss/ss/ss/d$b;->a(Lss/ss/ss/d;)V

    return-void
.end method
