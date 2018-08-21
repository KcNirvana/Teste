.class Lss/ss/ss/d$2;
.super Lss/ss/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lss/ss/ss/d;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    iput-object p1, p0, Lss/ss/ss/d$2;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/d$2;->b:I

    iput-wide p5, p0, Lss/ss/ss/d$2;->c:J

    invoke-direct {p0, p2, p3}, Lss/ss/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/d$2;->d:Lss/ss/ss/d;

    iget-object v0, v0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget v1, p0, Lss/ss/ss/d$2;->b:I

    iget-wide v2, p0, Lss/ss/ss/d$2;->c:J

    invoke-interface {v0, v1, v2, v3}, Lss/ss/ss/c;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
