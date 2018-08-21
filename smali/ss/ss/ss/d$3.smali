.class Lss/ss/ss/d$3;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d;->a(ZIILss/ss/ss/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lss/ss/ss/l;

.field final synthetic f:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ZIILss/ss/ss/l;)V
    .locals 0

    iput-object p1, p0, Lss/ss/ss/d$3;->f:Lss/ss/ss/d;

    iput-boolean p4, p0, Lss/ss/ss/d$3;->b:Z

    iput p5, p0, Lss/ss/ss/d$3;->c:I

    iput p6, p0, Lss/ss/ss/d$3;->d:I

    iput-object p7, p0, Lss/ss/ss/d$3;->e:Lss/ss/ss/l;

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/d$3;->f:Lss/ss/ss/d;

    iget-boolean v1, p0, Lss/ss/ss/d$3;->b:Z

    iget v2, p0, Lss/ss/ss/d$3;->c:I

    iget v3, p0, Lss/ss/ss/d$3;->d:I

    iget-object v4, p0, Lss/ss/ss/d$3;->e:Lss/ss/ss/l;

    invoke-static {v0, v1, v2, v3, v4}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ZIILss/ss/ss/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
