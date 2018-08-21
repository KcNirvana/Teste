.class Lss/ss/ss/d$1;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d;->a(ILss/ss/ss/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lss/ss/ss/a;

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILss/ss/ss/a;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$1;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/d$1;->b:I

    iput-object p5, p0, Lss/ss/ss/d$1;->c:Lss/ss/ss/a;

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/d$1;->d:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/d$1;->b:I

    iget-object v2, p0, Lss/ss/ss/d$1;->c:Lss/ss/ss/a;

    invoke-virtual {v0, v1, v2}, Lss/ss/ss/d;->b(ILss/ss/ss/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
